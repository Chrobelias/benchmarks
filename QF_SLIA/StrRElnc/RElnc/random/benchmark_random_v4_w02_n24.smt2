(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ "86" x "85" z a "75")))

(assert (str.in_re a (re.union (re.* (str.to_re "436")) (str.to_re "37"))))
(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "908") (re.+ (str.to_re "4"))) (re.range "3" "9")))))
(assert (str.in_re x (re.+ (re.union (str.to_re "87") (re.union (str.to_re "82") (re.range "0" "4"))))))
(assert (str.in_re z (re.+ (re.range "2" "6"))))

(assert (> (+ (* (- 9) (str.len y)) (* (- 9) (str.to_int a))) 42))

(check-sat)