(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re z (re.union (re.range "5" "9") (re.+ (str.to_re "75")))))
(assert (str.in_re x (re.+ (re.++ (re.+ (str.to_re "183")) (str.to_re "53")))))
(assert (str.in_re a (re.union (re.+ (re.++ (str.to_re "7") (re.+ (str.to_re "693")))) (str.to_re "286"))))
(assert (str.in_re y (re.* (re.union (re.* (re.range "5" "7")) (str.to_re "72")))))

(assert (= (+ (* 5 (str.len x)) (* (- 5) (str.len y)) (* 9 (str.len z)) (* 5 (str.len a))) 7))
(assert (< (+ (* (- 9) (str.to_int x)) (* 7 (str.to_int y)) (* 2 (str.to_int z)) (* 6 (str.to_int a))) 90))

(check-sat)