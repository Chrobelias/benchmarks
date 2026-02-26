(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ "41" x y a)))

(assert (str.in_re a (re.++ (str.to_re "4") (re.+ (re.union (re.range "6" "8") (str.to_re "924"))))))
(assert (str.in_re x (re.union (re.range "6" "9") (re.++ (re.* (str.to_re "5")) (str.to_re "958")))))
(assert (str.in_re y (re.union (str.to_re "349") (re.* (re.* (re.+ (re.range "3" "8")))))))
(assert (str.in_re z (re.union (re.+ (re.range "1" "6")) (re.+ (str.to_re "934")))))

(assert (>= (+ (* 8 (str.len x)) (* (- 7) (str.len y)) (* 2 (str.len z)) (- (str.len a))) 95))
(assert (> (+ (* (- 2) (str.to_int x)) (* 8 (str.to_int y)) (* (- 6) (str.to_int z)) (str.to_int a)) 40))

(check-sat)