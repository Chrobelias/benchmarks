(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "21") (re.* (str.to_re "2"))) (re.+ (str.to_re "816")))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "743") (re.range "5" "9")) (re.* (str.to_re "598")))))
(assert (str.in_re z (re.union (str.to_re "138") (re.++ (str.to_re "0") (re.+ (str.to_re "13"))))))
(assert (str.in_re a (re.union (re.++ (str.to_re "190") (re.+ (str.to_re "0"))) (re.* (str.to_re "3")))))

(assert (= (+ (* 9 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 3) (str.to_int z)) (* (- 8) (str.to_int a))) 68))
(assert (> (+ (* (- 9) (str.len a)) (* 6 (str.to_int x)) (- (str.to_int a))) 31))
(assert (< (+ (* (- 4) (str.len x)) (* (- 5) (str.len y)) (* (- 6) (str.len z)) (* (- 7) (str.len a))) 44))
(assert (>= (+ (* 2 (str.len x)) (* 8 (str.len y)) (* (- 2) (str.to_int y)) (str.to_int a)) 35))

(check-sat)