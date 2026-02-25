(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (re.union (re.union (str.to_re "93") (re.+ (str.to_re "46"))) (str.to_re "12")))))
(assert (str.in_re z (re.union (re.++ (str.to_re "1") (re.* (str.to_re "966"))) (re.+ (str.to_re "417")))))
(assert (str.in_re a (re.+ (re.++ (re.+ (str.to_re "5")) (re.* (str.to_re "84"))))))
(assert (str.in_re y (re.* (re.* (re.union (str.to_re "256") (re.range "5" "8"))))))

(assert (= (+ (* 6 (str.len y)) (* (- 9) (str.to_int y))) 53))

(check-sat)