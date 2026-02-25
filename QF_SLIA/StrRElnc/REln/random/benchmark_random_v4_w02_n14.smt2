(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.union (re.* (str.to_re "41")) (str.to_re "49"))))
(assert (str.in_re x (re.+ (re.union (re.++ (re.+ (str.to_re "47")) (re.range "7" "9")) (str.to_re "78")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "8") (re.++ (str.to_re "62") (str.to_re "368"))))))
(assert (str.in_re a (re.++ (re.* (str.to_re "65")) (re.+ (re.range "4" "8")))))

(assert (< (+ (* (- 3) (str.to_int x)) (* 6 (str.to_int y)) (* 3 (str.to_int z))) 71))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 5) (str.len y)) (* (- 9) (str.len z)) (* 3 (str.len a))) 56))

(check-sat)