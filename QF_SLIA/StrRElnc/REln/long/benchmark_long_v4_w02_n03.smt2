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
(assert (>= (str.len a) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re a (re.* (re.++ (re.union (str.to_re "61") (str.to_re "94")) (str.to_re "6")))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "75")) (re.+ (str.to_re "103"))))))
(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "44")) (re.range "4" "9")) (re.+ (re.range "3" "6")))))
(assert (str.in_re x (re.* (str.to_re "223"))))

(assert (= (+ (* 2 (str.len y)) (* 4 (str.len a)) (* 8 (str.to_int y)) (* (- 5) (str.to_int a))) 94))

(check-sat)