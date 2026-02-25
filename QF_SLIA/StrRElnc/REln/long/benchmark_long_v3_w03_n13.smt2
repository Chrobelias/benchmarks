(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.union (re.+ (str.to_re "77")) (re.+ (re.range "0" "9")))))
(assert (str.in_re y (re.union (re.++ (re.* (re.+ (str.to_re "7"))) (re.range "0" "3")) (str.to_re "84"))))
(assert (str.in_re x (re.++ (str.to_re "1") (re.union (re.range "4" "9") (re.union (re.range "5" "8") (re.* (re.range "1" "8")))))))

(assert (> (+ (* (- 4) (str.len x)) (* 2 (str.to_int x))) 28))
(assert (<= (+ (* (- 4) (str.to_int x)) (str.to_int y) (* 8 (str.to_int z))) 84))

(check-sat)