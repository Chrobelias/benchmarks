(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.union (str.to_re "841") (re.union (re.+ (re.range "7" "9")) (re.+ (str.to_re "9"))))))
(assert (str.in_re y (re.union (str.to_re "4") (re.+ (re.* (re.+ (re.range "7" "9")))))))
(assert (str.in_re z (re.* (re.union (str.to_re "78") (re.++ (str.to_re "99") (str.to_re "7"))))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "9")) (re.* (re.+ (str.to_re "930"))))))
(assert (str.in_re b (re.+ (re.++ (str.to_re "579") (re.union (str.to_re "348") (re.* (re.range "7" "9")))))))

(assert (>= (+ (* 5 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 7) (str.to_int z)) (* (- 7) (str.to_int a)) (* (- 6) (str.to_int b))) 73))
(assert (>= (+ (* 2 (str.len x)) (* (- 5) (str.len y)) (* 7 (str.len z)) (* 2 (str.len a)) (* (- 9) (str.len b))) 95))
(assert (<= (+ (* 2 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 2) (str.to_int z)) (* 2 (str.to_int a)) (* 3 (str.to_int b))) 11))
(assert (<= (+ (* 8 (str.len x)) (* (- 10) (str.len a)) (* 3 (str.to_int x)) (* 8 (str.to_int y)) (* 2 (str.to_int z)) (* 9 (str.to_int b))) 85))
(assert (< (+ (* 5 (str.len x)) (* 5 (str.len z)) (* (- 8) (str.len a)) (* 8 (str.len b))) 89))

(check-sat)