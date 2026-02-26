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
(assert (>= (str.len y) 1000))
(assert (>= (str.len a) 1000))

(assert (= (str.++ x z) (str.++ a y "70")))

(assert (str.in_re x (re.+ (re.* (re.* (re.* (re.range "5" "7")))))))
(assert (str.in_re y (re.union (re.union (str.to_re "94") (str.to_re "125")) (re.* (str.to_re "7")))))
(assert (str.in_re z (re.union (re.* (str.to_re "0")) (re.range "7" "9"))))
(assert (str.in_re a (re.++ (re.* (str.to_re "32")) (re.+ (re.+ (re.range "6" "9"))))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 4) (str.to_int x)) (str.to_int y) (* 4 (str.to_int z))) 42))

(check-sat)