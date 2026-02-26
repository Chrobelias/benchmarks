(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ a "77" x "37" y)))

(assert (str.in_re x (re.union (re.* (re.* (re.* (str.to_re "540")))) (re.range "5" "9"))))
(assert (str.in_re a (re.++ (re.union (re.* (str.to_re "82")) (re.* (str.to_re "367"))) (re.range "1" "7"))))
(assert (str.in_re z (re.++ (re.+ (re.range "1" "9")) (re.* (str.to_re "44")))))
(assert (str.in_re y (re.+ (re.++ (re.range "1" "4") (str.to_re "897")))))

(assert (= (+ (* (- 2) (str.len x)) (* (- 4) (str.len y)) (* 5 (str.len z)) (* (- 6) (str.len a))) 93))
(assert (= (+ (* (- 10) (str.to_int x)) (* 6 (str.to_int y)) (str.to_int z) (* (- 10) (str.to_int a))) 83))

(check-sat)