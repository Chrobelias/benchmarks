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
(assert (>= (str.len z) 1000))

(assert (= y (str.++ a z x "49")))

(assert (str.in_re x (re.union (str.to_re "10") (re.+ (re.++ (re.range "6" "9") (str.to_re "64"))))))
(assert (str.in_re z (re.union (re.++ (str.to_re "0") (re.range "6" "8")) (re.+ (str.to_re "78")))))
(assert (str.in_re y (re.+ (re.union (re.* (re.range "1" "8")) (re.range "6" "9")))))
(assert (str.in_re a (re.++ (str.to_re "37") (re.* (str.to_re "6")))))

(assert (<= (+ (* (- 8) (str.to_int x)) (* 8 (str.to_int y)) (* (- 4) (str.to_int z)) (* (- 6) (str.to_int a))) 42))
(assert (<= (+ (* 5 (str.len x)) (* 9 (str.len y)) (* 8 (str.len z)) (* (- 10) (str.len a))) 24))

(check-sat)